.class Lcom/android/phone/CallFeaturesSetting$IpCallSetting$3;
.super Ljava/lang/Object;
.source "CallFeaturesSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->customIpPrefix(Landroid/content/Context;Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallFeaturesSetting$IpCallSetting;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$needQueryLocation:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/phone/CallFeaturesSetting$IpCallSetting;Landroid/view/View;Landroid/content/Context;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2358
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting$IpCallSetting;

    iput-object p2, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$3;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$3;->val$context:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$3;->val$needQueryLocation:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x0

    .line 2362
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$3;->val$view:Landroid/view/View;

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2365
    .local v0, customIpPrefix:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$3;->val$context:Landroid/content/Context;

    const-string v4, "auto_ip_call_sp"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 2366
    .local v2, save:Landroid/content/SharedPreferences$Editor;
    const-string v3, "customed_ip_prefix"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2367
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2369
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2370
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting$IpCallSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpPrefixList:Landroid/preference/ListPreference;
    invoke-static {v3}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->access$700(Lcom/android/phone/CallFeaturesSetting$IpCallSetting;)Landroid/preference/ListPreference;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2378
    :goto_0
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting$IpCallSetting;

    invoke-virtual {v3}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ip_call_prefix"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2380
    iget-boolean v3, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$3;->val$needQueryLocation:Z

    if-eqz v3, :cond_0

    .line 2381
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting$IpCallSetting;

    iget-object v3, v3, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mHanlder:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2383
    :cond_0
    return-void

    .line 2373
    :cond_1
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$3;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting$IpCallSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->values:I
    invoke-static {v4}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->access$800(Lcom/android/phone/CallFeaturesSetting$IpCallSetting;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 2374
    .local v1, ipPrefix:[Ljava/lang/String;
    aget-object v0, v1, v5

    .line 2375
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting$IpCallSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpPrefixList:Landroid/preference/ListPreference;
    invoke-static {v3}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->access$700(Lcom/android/phone/CallFeaturesSetting$IpCallSetting;)Landroid/preference/ListPreference;

    move-result-object v3

    aget-object v4, v1, v5

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2376
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$3;->val$context:Landroid/content/Context;

    const v4, 0x7f0c0287

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
