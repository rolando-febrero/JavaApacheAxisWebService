package rolandofebrero.com.web.service;

public class MyJavaWebServiceHelloWorldProxy implements rolandofebrero.com.web.service.MyJavaWebServiceHelloWorld {
  private String _endpoint = null;
  private rolandofebrero.com.web.service.MyJavaWebServiceHelloWorld myJavaWebServiceHelloWorld = null;
  
  public MyJavaWebServiceHelloWorldProxy() {
    _initMyJavaWebServiceHelloWorldProxy();
  }
  
  public MyJavaWebServiceHelloWorldProxy(String endpoint) {
    _endpoint = endpoint;
    _initMyJavaWebServiceHelloWorldProxy();
  }
  
  private void _initMyJavaWebServiceHelloWorldProxy() {
    try {
      myJavaWebServiceHelloWorld = (new rolandofebrero.com.web.service.MyJavaWebServiceHelloWorldServiceLocator()).getMyJavaWebServiceHelloWorld();
      if (myJavaWebServiceHelloWorld != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)myJavaWebServiceHelloWorld)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)myJavaWebServiceHelloWorld)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (myJavaWebServiceHelloWorld != null)
      ((javax.xml.rpc.Stub)myJavaWebServiceHelloWorld)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public rolandofebrero.com.web.service.MyJavaWebServiceHelloWorld getMyJavaWebServiceHelloWorld() {
    if (myJavaWebServiceHelloWorld == null)
      _initMyJavaWebServiceHelloWorldProxy();
    return myJavaWebServiceHelloWorld;
  }
  
  public float addValue(float value) throws java.rmi.RemoteException{
    if (myJavaWebServiceHelloWorld == null)
      _initMyJavaWebServiceHelloWorldProxy();
    return myJavaWebServiceHelloWorld.addValue(value);
  }
  
  public float subtractValue(float value) throws java.rmi.RemoteException{
    if (myJavaWebServiceHelloWorld == null)
      _initMyJavaWebServiceHelloWorldProxy();
    return myJavaWebServiceHelloWorld.subtractValue(value);
  }
  
  public float multiplyValue(float value) throws java.rmi.RemoteException{
    if (myJavaWebServiceHelloWorld == null)
      _initMyJavaWebServiceHelloWorldProxy();
    return myJavaWebServiceHelloWorld.multiplyValue(value);
  }
  
  
}