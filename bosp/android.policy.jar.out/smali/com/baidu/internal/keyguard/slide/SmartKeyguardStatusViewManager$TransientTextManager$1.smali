.class Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager$1;
.super Ljava/lang/Object;
.source "SmartKeyguardStatusViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;->post(Ljava/lang/CharSequence;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;

.field final synthetic val$data:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager$Data;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager$Data;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager$1;->this$1:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;

    iput-object p2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager$1;->val$data:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager$Data;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 160
    iget-object v5, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager$1;->this$1:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;->mMessages:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;->access$000(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager$1;->val$data:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager$Data;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 161
    iget-object v5, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager$1;->this$1:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;->mMessages:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;->access$000(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .line 164
    .local v0, last:I
    if-lez v0, :cond_0

    .line 165
    iget-object v5, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager$1;->this$1:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;->mMessages:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;->access$000(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager$Data;

    .line 166
    .local v3, oldData:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager$Data;
    iget-object v2, v3, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager$Data;->text:Ljava/lang/CharSequence;

    .line 167
    .local v2, lastText:Ljava/lang/CharSequence;
    iget v1, v3, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager$Data;->icon:I

    .line 173
    .end local v3           #oldData:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager$Data;
    .local v1, lastIcon:I
    :goto_0
    iget-object v5, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager$1;->this$1:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;->access$100(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v5, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager$1;->this$1:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;->access$100(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v1, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 175
    return-void

    .line 169
    .end local v1           #lastIcon:I
    .end local v2           #lastText:Ljava/lang/CharSequence;
    :cond_0
    new-instance v4, Llibcore/util/MutableInt;

    invoke-direct {v4, v7}, Llibcore/util/MutableInt;-><init>(I)V

    .line 170
    .local v4, tmpIcon:Llibcore/util/MutableInt;
    iget-object v5, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager$1;->this$1:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;

    iget-object v5, v5, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    invoke-virtual {v5, v4}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getAltTextMessage(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 171
    .restart local v2       #lastText:Ljava/lang/CharSequence;
    iget v1, v4, Llibcore/util/MutableInt;->value:I

    .restart local v1       #lastIcon:I
    goto :goto_0
.end method