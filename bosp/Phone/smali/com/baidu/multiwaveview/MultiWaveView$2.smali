.class Lcom/baidu/multiwaveview/MultiWaveView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MultiWaveView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/multiwaveview/MultiWaveView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/multiwaveview/MultiWaveView;


# direct methods
.method constructor <init>(Lcom/baidu/multiwaveview/MultiWaveView;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/baidu/multiwaveview/MultiWaveView$2;->this$0:Lcom/baidu/multiwaveview/MultiWaveView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .parameter "animator"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView$2;->this$0:Lcom/baidu/multiwaveview/MultiWaveView;

    invoke-virtual {v0}, Lcom/baidu/multiwaveview/MultiWaveView;->ping()V

    .line 127
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView$2;->this$0:Lcom/baidu/multiwaveview/MultiWaveView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/baidu/multiwaveview/MultiWaveView$2;->this$0:Lcom/baidu/multiwaveview/MultiWaveView;

    #getter for: Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterX:F
    invoke-static {v2}, Lcom/baidu/multiwaveview/MultiWaveView;->access$000(Lcom/baidu/multiwaveview/MultiWaveView;)F

    move-result v2

    iget-object v3, p0, Lcom/baidu/multiwaveview/MultiWaveView$2;->this$0:Lcom/baidu/multiwaveview/MultiWaveView;

    #getter for: Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterY:F
    invoke-static {v3}, Lcom/baidu/multiwaveview/MultiWaveView;->access$100(Lcom/baidu/multiwaveview/MultiWaveView;)F

    move-result v3

    #calls: Lcom/baidu/multiwaveview/MultiWaveView;->switchToState(IFF)V
    invoke-static {v0, v1, v2, v3}, Lcom/baidu/multiwaveview/MultiWaveView;->access$200(Lcom/baidu/multiwaveview/MultiWaveView;IFF)V

    .line 128
    return-void
.end method