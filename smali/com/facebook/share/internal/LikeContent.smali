.class public Lcom/facebook/share/internal/LikeContent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/share/model/ShareModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/internal/LikeContent$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/share/internal/LikeContent;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final objectId:Ljava/lang/String;

.field private final objectType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 101
    new-instance v0, Lcom/facebook/share/internal/LikeContent$1;

    invoke-direct {v0}, Lcom/facebook/share/internal/LikeContent$1;-><init>()V

    sput-object v0, Lcom/facebook/share/internal/LikeContent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/LikeContent;->objectId:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/share/internal/LikeContent;->objectType:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/facebook/share/internal/LikeContent$Builder;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Lcom/facebook/share/internal/LikeContent$Builder;->access$000(Lcom/facebook/share/internal/LikeContent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/LikeContent;->objectId:Ljava/lang/String;

    .line 45
    invoke-static {p1}, Lcom/facebook/share/internal/LikeContent$Builder;->access$100(Lcom/facebook/share/internal/LikeContent$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/share/internal/LikeContent;->objectType:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/internal/LikeContent$Builder;Lcom/facebook/share/internal/LikeContent$1;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/facebook/share/internal/LikeContent;-><init>(Lcom/facebook/share/internal/LikeContent$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getObjectId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/facebook/share/internal/LikeContent;->objectId:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/facebook/share/internal/LikeContent;->objectType:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 91
    iget-object p2, p0, Lcom/facebook/share/internal/LikeContent;->objectId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object p2, p0, Lcom/facebook/share/internal/LikeContent;->objectType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
