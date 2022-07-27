public class ActionPoller
{
    Integer count = 0;
    
    Public PageReference incrementCounter()
    {
        count++;
        return null;
    }
    
    public Integer getcount()
    {
        return count;
    }
}