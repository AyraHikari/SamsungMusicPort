.class public Lcom/facebook/share/model/ShareCameraEffectContent;
.super Lcom/facebook/share/model/ShareContent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/model/ShareCameraEffectContent$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareContent<",
        "Lcom/facebook/share/model/ShareCameraEffectContent;",
        "Lcom/facebook/share/model/ShareCameraEffectContent$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/share/model/ShareCameraEffectContent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private arguments:Lcom/facebook/share/model/CameraEffectArguments;

.field private effectId:Ljava/lang/String;

.field private textures:Lcom/facebook/share/model/CameraEffectTextures;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 95
    new-instance v0, Lcom/facebook/share/model/ShareCameraEffectContent$1;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareCameraEffectContent$1;-><init>()V

    sput-object v0, Lcom/facebook/share/model/ShareCameraEffectContent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 49
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareContent;-><init>(Landroid/os/Parcel;)V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareCameraEffectContent;->effectId:Ljava/lang/String;

    .line 52
    new-instance v0, Lcom/facebook/share/model/CameraEffectArguments$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/CameraEffectArguments$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/facebook/share/model/CameraEffectArguments$Builder;->readFrom(Landroid/os/Parcel;)Lcom/facebook/share/model/CameraEffectArguments$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/share/model/CameraEffectArguments$Builder;->build()Lcom/facebook/share/model/CameraEffectArguments;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareCameraEffectContent;->arguments:Lcom/facebook/share/model/CameraEffectArguments;

    .line 53
    new-instance v0, Lcom/facebook/share/model/CameraEffectTextures$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/CameraEffectTextures$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/facebook/share/model/CameraEffectTextures$Builder;->readFrom(Landroid/os/Parcel;)Lcom/facebook/share/model/CameraEffectTextures$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/share/model/CameraEffectTextures$Builder;->build()Lcom/facebook/share/model/CameraEffectTextures;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/share/model/ShareCameraEffectContent;->textures:Lcom/facebook/share/model/CameraEffectTextures;

    return-void
.end method

.method private constructor <init>(Lcom/facebook/share/model/ShareCameraEffectContent$Builder;)V
    .locals 1

    .line 41
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareContent;-><init>(Lcom/facebook/share/model/ShareContent$Builder;)V

    .line 43
    invoke-static {p1}, Lcom/facebook/share/model/ShareCameraEffectContent$Builder;->access$000(Lcom/facebook/share/model/ShareCameraEffectContent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareCameraEffectContent;->effectId:Ljava/lang/String;

    .line 44
    invoke-static {p1}, Lcom/facebook/share/model/ShareCameraEffectContent$Builder;->access$100(Lcom/facebook/share/model/ShareCameraEffectContent$Builder;)Lcom/facebook/share/model/CameraEffectArguments;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareCameraEffectContent;->arguments:Lcom/facebook/share/model/CameraEffectArguments;

    .line 45
    invoke-static {p1}, Lcom/facebook/share/model/ShareCameraEffectContent$Builder;->access$200(Lcom/facebook/share/model/ShareCameraEffectContent$Builder;)Lcom/facebook/share/model/CameraEffectTextures;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/share/model/ShareCameraEffectContent;->textures:Lcom/facebook/share/model/CameraEffectTextures;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/model/ShareCameraEffectContent$Builder;Lcom/facebook/share/model/ShareCameraEffectContent$1;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareCameraEffectContent;-><init>(Lcom/facebook/share/model/ShareCameraEffectContent$Builder;)V

    return-void
.end method


# virtual methods
.method public getArguments()Lcom/facebook/share/model/CameraEffectArguments;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/facebook/share/model/ShareCameraEffectContent;->arguments:Lcom/facebook/share/model/CameraEffectArguments;

    return-object v0
.end method

.method public getEffectId()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/facebook/share/model/ShareCameraEffectContent;->effectId:Ljava/lang/String;

    return-object v0
.end method

.method public getTextures()Lcom/facebook/share/model/CameraEffectTextures;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/facebook/share/model/ShareCameraEffectContent;->textures:Lcom/facebook/share/model/CameraEffectTextures;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 58
    invoke-super {p0, p1, p2}, Lcom/facebook/share/model/ShareContent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 60
    iget-object p2, p0, Lcom/facebook/share/model/ShareCameraEffectContent;->effectId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object p2, p0, Lcom/facebook/share/model/ShareCameraEffectContent;->arguments:Lcom/facebook/share/model/CameraEffectArguments;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 62
    iget-object p2, p0, Lcom/facebook/share/model/ShareCameraEffectContent;->textures:Lcom/facebook/share/model/CameraEffectTextures;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
