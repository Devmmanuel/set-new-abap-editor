<h1>set-new-abap-editor</h1>
</br>

<h2>Change to the new editor without use development transactions like SE38, SE37, SE80, etc.</h2>
</br>

<h4>Sometimes in SAP Systems the Debugger for some users, can be will see like this</h4>
<img width="928" height="413" alt="image" src="https://github.com/user-attachments/assets/a6ad9f28-f4f0-47e2-8a10-57c473a90371" />
</br>

<h4>There are different transactions where you can change this configuration like the next:</h4>
<ul>
  <li>SE24</li>
  <li>SE37</li>
  <li>SE38</li>
  <li>SE80</li>
  <li>Etcetera</li>
</ul>
</br>

<h4>But what Happen if you need to do a DEBUG in Productive Ambient, you can have access to the transactions mentioned below</h4>
<h4>The problem can be resolved with this Program, the Program set the new ABAP Editor for the current user that is executed the program/transaction, the only thing  you need to do is create the program in your server and create a transaction for the report then transport to the Productive System, and now when you need to do a DEGUG in PROD ambiente you can configure the new ABAP Editor if you don't have configured for you user</h4>
</br>

<h4>After the execution of this program, the Debugger will be see like this</h4>
<img width="1235" height="322" alt="image" src="https://github.com/user-attachments/assets/ec8c3fb5-a178-4f63-80f5-6ff2402cd95e" />
</br>
</br>
</br>
</br>
</br>

<h1>IMPORTANT NOTE</h1>
<h4>If you want to know more about this project visit mi article about this project in Hashnode</h4>
<a href="https://devmmanuelen.hashnode.dev/how-to-configure-the-new-abap-editor-using-sap-abap-code">How to Configure the New ABAP Editor Using SAP ABAP Code</a>
