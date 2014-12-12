pollutantmean <- function(directory, pollutant, id = 1:332) {
      
      pollutantData<-data.frame()
      
      for(file in rep(id)){
            path <- paste(directory,"/",sprintf("%03d", file),".csv",sep="")
            pollutantData<-rbind(pollutantData,read.table(path,sep=",",header=TRUE))
            
      }
      mean(as.matrix(pollutantData[pollutant]),na.rm=TRUE)
}

complete <- function(directory, id = 1:332) {
      
      total<-data.frame()
      for(file in rep(id)){
            path <- paste(directory,"/",sprintf("%03d", file),".csv",sep="")
            pollutantData<-read.table(path,sep=",",header=TRUE)
            total<-rbind(total,cbind(file,nrow(pollutantData[complete.cases(pollutantData),])))
      }
      colnames(total)<-c("id","nobs")
      total
      
}

corr <- function(directory, threshold = 0) {
      
      total<-numeric()
      for(file in list.files(directory)){
            path <- paste(directory,"/",file,sep="")
            pollutantData<-read.table(path,sep=",",header=TRUE)
            comple<-nrow(pollutantData[complete.cases(pollutantData),])
            if(comple>threshold){
                  #total<-rbind(total,cor(pollutantData$nitrate,pollutantData$sulfate,use="complete.obs"))
                  total<-c(total,cor(pollutantData$nitrate,pollutantData$sulfate,use="complete.obs"))
            }
      }
      as.numeric(total)
}
