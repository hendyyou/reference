.class final Lcom/baidu/internal/keyguard/slide/Tweener$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Tweener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/slide/Tweener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 131
    #calls: Lcom/baidu/internal/keyguard/slide/Tweener;->remove(Landroid/animation/Animator;)V
    invoke-static {p1}, Lcom/baidu/internal/keyguard/slide/Tweener;->access$000(Landroid/animation/Animator;)V

    .line 132
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 126
    #calls: Lcom/baidu/internal/keyguard/slide/Tweener;->remove(Landroid/animation/Animator;)V
    invoke-static {p1}, Lcom/baidu/internal/keyguard/slide/Tweener;->access$000(Landroid/animation/Animator;)V

    .line 127
    return-void
.end method
