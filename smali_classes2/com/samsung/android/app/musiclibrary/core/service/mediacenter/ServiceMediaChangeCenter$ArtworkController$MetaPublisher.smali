.class abstract Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$MetaPublisher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "MetaPublisher"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$1;)V
    .locals 0

    .line 536
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$MetaPublisher;-><init>()V

    return-void
.end method


# virtual methods
.method abstract asyncPublishBitmap(Landroid/net/Uri;Landroid/graphics/Bitmap;J)V
.end method

.method abstract asyncPublishMetaCachedBitmap(Landroid/net/Uri;Landroid/graphics/Bitmap;J)V
.end method

.method abstract syncPublishMetaCachedBitmap(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method abstract syncPublishMetaNoCachedBitmap(Landroid/net/Uri;)V
.end method
