select * from transformed_heart_data;

select sex,cp,max(trestbps) as BloodPressureLevel, max(chol) as CholestralLevel,count(target) as PresenceOfHeartDisease 
from transformed_heart_data group by sex,cp;

select sex, if(age<40,'Below 40','40 and Above') as Age,if(chol<=200,'Normal Level','Not Normal') as CholestralLevel,
case 
    when age<=39 and trestbps<=110 then 'Yes'
    when age>=40 and age<=59 and trestbps <=124 then 'Yes'
    when age>=60 and trestbps<=139 then 'Yes'
    else 'No'
end as NormalBloodPressureLevel , fbs as BloodSugarLevel, target as PresenceOfHeartDisease from transformed_heart_data;

select sex,ca,thal,count(target) from transformed_heart_data group by sex,ca,thal order by sex;

select distinct exang as ChestPainDuringExercise, sex ,sum(case when target='Yes' then 1 else 0 end) as PresenceOfHeartDisease 
from transformed_heart_data group by sex,exang order by sex;

select sex, thalach as MaximumHeartBeat, target as PresenceOfHeartDisease
 from transformed_heart_data;
 
 
 









