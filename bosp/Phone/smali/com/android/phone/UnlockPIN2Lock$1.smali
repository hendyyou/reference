.class Lcom/android/phone/UnlockPIN2Lock$1;
.super Ljava/lang/Object;
.source "UnlockPIN2Lock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/UnlockPIN2Lock;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/UnlockPIN2Lock;


# direct methods
.method constructor <init>(Lcom/android/phone/UnlockPIN2Lock;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/phone/UnlockPIN2Lock$1;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 165
    iget-object v2, p0, Lcom/android/phone/UnlockPIN2Lock$1;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget-object v2, v2, Lcom/android/phone/UnlockPIN2Lock;->mPwdDisplay:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 166
    iget-object v2, p0, Lcom/android/phone/UnlockPIN2Lock$1;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget-object v2, v2, Lcom/android/phone/UnlockPIN2Lock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 167
    .local v0, digits:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 168
    .local v1, len:I
    if-lez v1, :cond_0

    .line 169
    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 171
    :cond_0
    iget-object v2, p0, Lcom/android/phone/UnlockPIN2Lock$1;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget-object v2, v2, Lcom/android/phone/UnlockPIN2Lock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/phone/UnlockPIN2Lock;->strPwd:Ljava/lang/String;

    .line 172
    const-string v2, "UnlockPIN2Lock "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[mbackspace][onClickListener][strPwd)]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/phone/UnlockPIN2Lock;->strPwd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .end local v0           #digits:Landroid/text/Editable;
    .end local v1           #len:I
    :cond_1
    return-void
.end method