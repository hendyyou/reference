.class Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;
.super Ljava/lang/Object;
.source "SmartKeyguardStatusViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransientTextManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager$Data;
    }
.end annotation


# instance fields
.field private mMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager$Data;",
            ">;"
        }
    .end annotation
.end field

.field private mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Landroid/widget/TextView;)V
    .locals 2
    .parameter
    .parameter "textView"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;->mMessages:Ljava/util/ArrayList;

    .line 152
    iput-object p2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;->mTextView:Landroid/widget/TextView;

    .line 153
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;->mMessages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method post(Ljava/lang/CharSequence;IJ)V
    .locals 3
    .parameter "message"
    .parameter "icon"
    .parameter "duration"

    .prologue
    const/4 v2, 0x0

    .line 160
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;->mTextView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 185
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 165
    new-instance v0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager$Data;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager$Data;-><init>(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;Ljava/lang/CharSequence;I)V

    .line 166
    .local v0, data:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager$Data;
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mContainer:Landroid/view/View;
    invoke-static {v1}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$300(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager$1;

    invoke-direct {v2, p0, v0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager$1;-><init>(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager$Data;)V

    invoke-virtual {v1, v2, p3, p4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method