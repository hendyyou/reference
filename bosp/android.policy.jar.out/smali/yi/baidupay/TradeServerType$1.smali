.class final Lyi/baidupay/TradeServerType$1;
.super Ljava/lang/Object;
.source "TradeServerType.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/baidupay/TradeServerType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lyi/baidupay/TradeServerType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lyi/baidupay/TradeServerType$1;->createFromParcel(Landroid/os/Parcel;)Lyi/baidupay/TradeServerType;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lyi/baidupay/TradeServerType;
    .locals 2
    .parameter "source"

    .prologue
    .line 88
    new-instance v0, Lyi/baidupay/TradeServerType;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lyi/baidupay/TradeServerType;-><init>(Landroid/os/Parcel;Lyi/baidupay/TradeServerType$1;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lyi/baidupay/TradeServerType$1;->newArray(I)[Lyi/baidupay/TradeServerType;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lyi/baidupay/TradeServerType;
    .locals 1
    .parameter "size"

    .prologue
    .line 93
    new-array v0, p1, [Lyi/baidupay/TradeServerType;

    return-object v0
.end method
