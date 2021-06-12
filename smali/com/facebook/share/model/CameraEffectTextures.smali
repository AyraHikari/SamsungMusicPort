.class public Lcom/facebook/share/model/CameraEffectTextures;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/share/model/ShareModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/model/CameraEffectTextures$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/share/model/CameraEffectTextures;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final textures:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 87
    new-instance v0, Lcom/facebook/share/model/CameraEffectTextures$1;

    invoke-direct {v0}, Lcom/facebook/share/model/CameraEffectTextures$1;-><init>()V

    sput-object v0, Lcom/facebook/share/model/CameraEffectTextures;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/share/model/CameraEffectTextures;->textures:Landroid/os/Bundle;

    return-void
.end method

.method private constructor <init>(Lcom/facebook/share/model/CameraEffectTextures$Builder;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1}, Lcom/facebook/share/model/CameraEffectTextures$Builder;->access$000(Lcom/facebook/share/model/CameraEffectTextures$Builder;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/share/model/CameraEffectTextures;->textures:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/model/CameraEffectTextures$Builder;Lcom/facebook/share/model/CameraEffectTextures$1;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/facebook/share/model/CameraEffectTextures;-><init>(Lcom/facebook/share/model/CameraEffectTextures$Builder;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/share/model/CameraEffectTextures;)Landroid/os/Bundle;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/facebook/share/model/CameraEffectTextures;->textures:Landroid/os/Bundle;

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/facebook/share/model/CameraEffectTextures;->textures:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getTextureBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/facebook/share/model/CameraEffectTextures;->textures:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 53
    instance-of v0, p1, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 54
    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTextureUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/facebook/share/model/CameraEffectTextures;->textures:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 62
    instance-of v0, p1, Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 63
    check-cast p1, Landroid/net/Uri;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/facebook/share/model/CameraEffectTextures;->textures:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 84
    iget-object p2, p0, Lcom/facebook/share/model/CameraEffectTextures;->textures:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
