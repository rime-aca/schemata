##蒼頡檢字法〔Cangjie6〕

1. This is a Chinese input method(Cangjie, 6th edition) based on Rime input engine
2. `cangjie6.dict.yaml` is the charactor encoding list, `cangjie6.extended.dict.yaml` is the phrase list, and `cangjie6.schema.yaml` is the configuration file
3. To personalise, follow instructions in `cangjie6.schema.yaml`

一、本方案爲爲Rime輸入法引擎所製檢頡檢字法輸入方案  
二、`cangjie6.dict.yaml`爲蒼頡檢字法字表，`cangjie6.extended.dict.yaml`爲詞表，`cangjie6.schema.yaml`爲方案配置文件   
三、如欲更改默認配置，請循`cangjie6.schema.yaml`中註釋進行

##使用方法：
<ol>
<li>右鍵點擊<code>cangjie6.schema.yaml</code>、<code>cangjie6.dict.yaml</code>、<code>cangjie6.extended.dict.yaml</code>，下載鏈接檔至電腦；
<li>將此三個文件放入【用戶檔案夾】；
<br><small><ul>
<code>MacOS X</code>: ~/Library/Rime (鼠鬚管狀態欄選單中的「用戶文檔…」)<br>
<code>Windows</code>: User_Direction\AppData\Roaming\Rime (開始→所有程式→小狼毫→用戶檔案夾)
</small></ul>
<li>在 default.custom.yaml中加入；
<pre>patch:
  schema_list:
    - schema: cangjie6
</pre>
<li>重新佈置後用<code>Control</code>+<code>`</code> 或 <code>F4</code> (Windows) 叫出〔方案選單〕，選中「蒼頡檢字法」。
</ol>