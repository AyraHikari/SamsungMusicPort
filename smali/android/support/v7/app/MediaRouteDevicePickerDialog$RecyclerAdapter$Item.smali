.class Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$Item;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Item"
.end annotation


# instance fields
.field private final mData:Ljava/lang/Object;

.field private final mType:I

.field final synthetic this$1:Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter;


# direct methods
.method constructor <init>(Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter;Ljava/lang/Object;)V
    .locals 0

    .line 430
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$Item;->this$1:Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    iput-object p2, p0, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$Item;->mData:Ljava/lang/Object;

    .line 433
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 434
    iput p1, p0, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$Item;->mType:I

    goto :goto_0

    .line 435
    :cond_0
    instance-of p1, p2, Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    .line 436
    iput p1, p0, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$Item;->mType:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 438
    iput p1, p0, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$Item;->mType:I

    const-string p1, "RecyclerAdapter"

    const-string p2, "Wrong type of data passed to Item constructor"

    .line 439
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1

    .line 444
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$Item;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 448
    iget v0, p0, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$Item;->mType:I

    return v0
.end method
