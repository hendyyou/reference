.class Lcom/android/server/MountService$1$4;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/MountService$1;


# direct methods
.method constructor <init>(Lcom/android/server/MountService$1;)V
    .locals 0
    .parameter

    .prologue
    .line 782
    iput-object p1, p0, Lcom/android/server/MountService$1$4;->this$1:Lcom/android/server/MountService$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 784
    invoke-static {}, Lcom/android/server/MountService;->access$2400()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 786
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService$1$4;->this$1:Lcom/android/server/MountService$1;

    iget-object v1, v1, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v3, 0x0

    #calls: Lcom/android/server/MountService;->enableUSBFuction(Z)V
    invoke-static {v1, v3}, Lcom/android/server/MountService;->access$2500(Lcom/android/server/MountService;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 790
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 791
    return-void

    .line 787
    :catch_0
    move-exception v0

    .line 788
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "MountService"

    const-string v3, "USB disable exception"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 790
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method