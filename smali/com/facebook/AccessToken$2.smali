.class final Lcom/facebook/AccessToken$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AccessToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 688
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/facebook/AccessToken;
    .locals 1

    .line 692
    new-instance v0, Lcom/facebook/AccessToken;

    invoke-direct {v0, p1}, Lcom/facebook/AccessToken;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 688
    invoke-virtual {p0, p1}, Lcom/facebook/AccessToken$2;->createFromParcel(Landroid/os/Parcel;)Lcom/facebook/AccessToken;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/facebook/AccessToken;
    .locals 0

    .line 697
    new-array p1, p1, [Lcom/facebook/AccessToken;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 688
    invoke-virtual {p0, p1}, Lcom/facebook/AccessToken$2;->newArray(I)[Lcom/facebook/AccessToken;

    move-result-object p1

    return-object p1
.end method
