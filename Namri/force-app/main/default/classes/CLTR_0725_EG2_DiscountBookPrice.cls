public class CLTR_0725_EG2_DiscountBookPrice
{
    public static void calcdisc(List<Library__c> Lib)
    {
        for(Library__c EB:Lib)
    {
        EB.Price__c*=0.9;  //X*=Y this expression will multiply x with y and reassign x with new value in our case the discount is 10%
    }
    }
}