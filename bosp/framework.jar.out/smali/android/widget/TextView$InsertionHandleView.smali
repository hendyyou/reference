.class Landroid/widget/TextView$InsertionHandleView;
.super Landroid/widget/TextView$HandleView;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InsertionHandleView"
.end annotation


# static fields
.field private static final DELAY_BEFORE_HANDLE_FADES_OUT:I = 0xfa0

.field private static final RECENT_CUT_COPY_DURATION:I = 0x3a98


# instance fields
.field private mDownPositionX:F

.field private mDownPositionY:F

.field private mHider:Ljava/lang/Runnable;

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter
    .parameter "drawable"

    .prologue
    .line 11265
    iput-object p1, p0, Landroid/widget/TextView$InsertionHandleView;->this$0:Landroid/widget/TextView;

    .line 11266
    invoke-direct {p0, p1, p2, p2}, Landroid/widget/TextView$HandleView;-><init>(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 11267
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView$InsertionHandleView;->mCursorType:I

    .line 11268
    return-void
.end method

.method private hideAfterDelay()V
    .locals 4

    .prologue
    .line 11290
    invoke-direct {p0}, Landroid/widget/TextView$InsertionHandleView;->removeHiderCallback()V

    .line 11291
    iget-object v0, p0, Landroid/widget/TextView$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 11292
    new-instance v0, Landroid/widget/TextView$InsertionHandleView$1;

    invoke-direct {v0, p0}, Landroid/widget/TextView$InsertionHandleView$1;-><init>(Landroid/widget/TextView$InsertionHandleView;)V

    iput-object v0, p0, Landroid/widget/TextView$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    .line 11298
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$InsertionHandleView;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11299
    return-void
.end method

.method private removeHiderCallback()V
    .locals 2

    .prologue
    .line 11302
    iget-object v0, p0, Landroid/widget/TextView$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 11303
    iget-object v0, p0, Landroid/widget/TextView$InsertionHandleView;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 11305
    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentCursorOffset()I
    .locals 1

    .prologue
    .line 11352
    iget-object v0, p0, Landroid/widget/TextView$InsertionHandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .parameter "drawable"
    .parameter "isRtlRun"

    .prologue
    .line 11309
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public onDetached()V
    .locals 0

    .prologue
    .line 11373
    invoke-super {p0}, Landroid/widget/TextView$HandleView;->onDetached()V

    .line 11374
    invoke-direct {p0}, Landroid/widget/TextView$InsertionHandleView;->removeHiderCallback()V

    .line 11375
    return-void
.end method

.method onHandleMoved()V
    .locals 0

    .prologue
    .line 11367
    invoke-super {p0}, Landroid/widget/TextView$HandleView;->onHandleMoved()V

    .line 11368
    invoke-direct {p0}, Landroid/widget/TextView$InsertionHandleView;->removeHiderCallback()V

    .line 11369
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    .line 11314
    invoke-super {p0, p1}, Landroid/widget/TextView$HandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 11316
    .local v3, result:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 11347
    :goto_0
    :pswitch_0
    return v3

    .line 11318
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iput v4, p0, Landroid/widget/TextView$InsertionHandleView;->mDownPositionX:F

    .line 11319
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iput v4, p0, Landroid/widget/TextView$InsertionHandleView;->mDownPositionY:F

    goto :goto_0

    .line 11323
    :pswitch_2
    invoke-virtual {p0}, Landroid/widget/TextView$InsertionHandleView;->offsetHasBeenChanged()Z

    move-result v4

    if-nez v4, :cond_0

    .line 11324
    iget v4, p0, Landroid/widget/TextView$InsertionHandleView;->mDownPositionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    sub-float v0, v4, v5

    .line 11325
    .local v0, deltaX:F
    iget v4, p0, Landroid/widget/TextView$InsertionHandleView;->mDownPositionY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    sub-float v1, v4, v5

    .line 11326
    .local v1, deltaY:F
    mul-float v4, v0, v0

    mul-float v5, v1, v1

    add-float v2, v4, v5

    .line 11327
    .local v2, distanceSquared:F
    iget-object v4, p0, Landroid/widget/TextView$InsertionHandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSquaredTouchSlopDistance:I
    invoke-static {v4}, Landroid/widget/TextView;->access$7700(Landroid/widget/TextView;)I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v2, v4

    if-gez v4, :cond_0

    .line 11328
    iget-object v4, p0, Landroid/widget/TextView$InsertionHandleView;->mActionPopupWindow:Landroid/widget/TextView$ActionPopupWindow;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/widget/TextView$InsertionHandleView;->mActionPopupWindow:Landroid/widget/TextView$ActionPopupWindow;

    invoke-virtual {v4}, Landroid/widget/TextView$ActionPopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 11330
    iget-object v4, p0, Landroid/widget/TextView$InsertionHandleView;->mActionPopupWindow:Landroid/widget/TextView$ActionPopupWindow;

    invoke-virtual {v4}, Landroid/widget/TextView$ActionPopupWindow;->hide()V

    .line 11336
    .end local v0           #deltaX:F
    .end local v1           #deltaY:F
    .end local v2           #distanceSquared:F
    :cond_0
    :goto_1
    invoke-direct {p0}, Landroid/widget/TextView$InsertionHandleView;->hideAfterDelay()V

    goto :goto_0

    .line 11332
    .restart local v0       #deltaX:F
    .restart local v1       #deltaY:F
    .restart local v2       #distanceSquared:F
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView$InsertionHandleView;->showWithActionPopup()V

    goto :goto_1

    .line 11340
    .end local v0           #deltaX:F
    .end local v1           #deltaY:F
    .end local v2           #distanceSquared:F
    :pswitch_3
    invoke-direct {p0}, Landroid/widget/TextView$InsertionHandleView;->hideAfterDelay()V

    goto :goto_0

    .line 11316
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public show()V
    .locals 6

    .prologue
    .line 11272
    invoke-super {p0}, Landroid/widget/TextView$HandleView;->show()V

    .line 11274
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/widget/TextView;->access$7600()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 11275
    .local v0, durationSinceCutOrCopy:J
    const-wide/16 v2, 0x3a98

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 11276
    iget-object v2, p0, Landroid/widget/TextView$InsertionHandleView;->mActionPopupWindow:Landroid/widget/TextView$ActionPopupWindow;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/TextView$InsertionHandleView;->mActionPopupWindow:Landroid/widget/TextView$ActionPopupWindow;

    iget v3, p0, Landroid/widget/TextView$InsertionHandleView;->mCursorType:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView$ActionPopupWindow;->updatePositionFlag(I)V

    .line 11277
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/TextView$InsertionHandleView;->showActionPopupWindow(I)V

    .line 11280
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView$InsertionHandleView;->hideAfterDelay()V

    .line 11281
    return-void
.end method

.method public showWithActionPopup()V
    .locals 2

    .prologue
    .line 11284
    invoke-virtual {p0}, Landroid/widget/TextView$InsertionHandleView;->show()V

    .line 11285
    iget-object v0, p0, Landroid/widget/TextView$InsertionHandleView;->mActionPopupWindow:Landroid/widget/TextView$ActionPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$InsertionHandleView;->mActionPopupWindow:Landroid/widget/TextView$ActionPopupWindow;

    iget v1, p0, Landroid/widget/TextView$InsertionHandleView;->mCursorType:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView$ActionPopupWindow;->updatePositionFlag(I)V

    .line 11286
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView$InsertionHandleView;->showActionPopupWindow(I)V

    .line 11287
    return-void
.end method

.method public updatePosition(FF)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 11362
    iget-object v0, p0, Landroid/widget/TextView$InsertionHandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView$InsertionHandleView;->positionAtCursorOffset(IZ)Z

    .line 11363
    return-void
.end method

.method public updateSelection(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 11357
    iget-object v0, p0, Landroid/widget/TextView$InsertionHandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/widget/TextView;->access$500(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 11358
    return-void
.end method