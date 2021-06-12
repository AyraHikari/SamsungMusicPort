.class public final Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final attribute:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;

.field private final mediaMetadataBuilder:Landroid/media/MediaMetadata$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    new-instance v0, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v0}, Landroid/media/MediaMetadata$Builder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->mediaMetadataBuilder:Landroid/media/MediaMetadata$Builder;

    .line 315
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->attribute:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;

    return-void
.end method


# virtual methods
.method public final build()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 4

    .line 363
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->mediaMetadataBuilder:Landroid/media/MediaMetadata$Builder;

    const-string v1, "com.samsung.android.app.music.metadata.ATTRIBUTE"

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->attribute:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;->build()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    .line 364
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->mediaMetadataBuilder:Landroid/media/MediaMetadata$Builder;

    invoke-virtual {v1}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object v1

    const-string v2, "mediaMetadataBuilder.build()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;-><init>(Landroid/media/MediaMetadata;)V

    return-object v0
.end method

.method public final putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->mediaMetadataBuilder:Landroid/media/MediaMetadata$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaMetadata$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/media/MediaMetadata$Builder;

    return-object p0
.end method

.method public final putCelebAttribute()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->attribute:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;->putCelebAttribute()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;

    return-object p0
.end method

.method public final putExplicitAttribute()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->attribute:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;->putExplicitAttribute()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;

    return-object p0
.end method

.method public final putLong(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->mediaMetadataBuilder:Landroid/media/MediaMetadata$Builder;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    return-object p0
.end method

.method public final putMusicAttribute()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->attribute:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;->putMusicAttribute()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;

    return-object p0
.end method

.method public final putPrivateAttribute()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->attribute:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;->putPrivateAttribute()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;

    return-object p0
.end method

.method public final putRadioAdvertisementAttribute()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->attribute:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;->putRadioAdvertisementAttribute()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;

    return-object p0
.end method

.method public final putRadioAttribute()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->attribute:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;->putRadioAttribute()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;

    return-object p0
.end method

.method public final putString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->mediaMetadataBuilder:Landroid/media/MediaMetadata$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    return-object p0
.end method
