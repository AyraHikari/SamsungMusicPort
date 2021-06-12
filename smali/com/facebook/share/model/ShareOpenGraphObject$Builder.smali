.class public final Lcom/facebook/share/model/ShareOpenGraphObject$Builder;
.super Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/ShareOpenGraphObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder<",
        "Lcom/facebook/share/model/ShareOpenGraphObject;",
        "Lcom/facebook/share/model/ShareOpenGraphObject$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 64
    invoke-direct {p0}, Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;-><init>()V

    const-string v0, "fbsdk:create_object"

    const/4 v1, 0x1

    .line 65
    invoke-virtual {p0, v0, v1}, Lcom/facebook/share/model/ShareOpenGraphObject$Builder;->putBoolean(Ljava/lang/String;Z)Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;

    return-void
.end method


# virtual methods
.method public build()Lcom/facebook/share/model/ShareOpenGraphObject;
    .locals 2

    .line 70
    new-instance v0, Lcom/facebook/share/model/ShareOpenGraphObject;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/model/ShareOpenGraphObject;-><init>(Lcom/facebook/share/model/ShareOpenGraphObject$Builder;Lcom/facebook/share/model/ShareOpenGraphObject$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphObject$Builder;->build()Lcom/facebook/share/model/ShareOpenGraphObject;

    move-result-object v0

    return-object v0
.end method

.method readFrom(Landroid/os/Parcel;)Lcom/facebook/share/model/ShareOpenGraphObject$Builder;
    .locals 1

    .line 74
    const-class v0, Lcom/facebook/share/model/ShareOpenGraphObject;

    .line 76
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 75
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/facebook/share/model/ShareOpenGraphObject;

    .line 74
    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareOpenGraphObject$Builder;->readFrom(Lcom/facebook/share/model/ShareOpenGraphValueContainer;)Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;

    move-result-object p1

    check-cast p1, Lcom/facebook/share/model/ShareOpenGraphObject$Builder;

    return-object p1
.end method
