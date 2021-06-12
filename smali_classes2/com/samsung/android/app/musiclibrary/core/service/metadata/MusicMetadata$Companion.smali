.class public final Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "Empty"

    const-string v4, "getEmpty()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "EmptyMediaMetadata"

    const-string v4, "getEmptyMediaMetadata()Landroid/media/MediaMetadata;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 368
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getEmptyMediaMetadata$p(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion;)Landroid/media/MediaMetadata;
    .locals 0

    .line 368
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion;->getEmptyMediaMetadata()Landroid/media/MediaMetadata;

    move-result-object p0

    return-object p0
.end method

.method private final getEmptyMediaMetadata()Landroid/media/MediaMetadata;
    .locals 3

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->access$getEmptyMediaMetadata$cp()Lkotlin/Lazy;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaMetadata;

    return-object v0
.end method

.method private final obtainMusicMeta(Landroid/media/MediaMetadata$Builder;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 2

    .line 495
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-virtual {p1}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object p1

    const-string v1, "builder.build()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;-><init>(Landroid/media/MediaMetadata;)V

    return-object v0
.end method


# virtual methods
.method public final addArtworkToMetadata(Landroid/media/MediaMetadata;Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 4

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bm"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 553
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion;

    new-instance v1, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v1, p1}, Landroid/media/MediaMetadata$Builder;-><init>(Landroid/media/MediaMetadata;)V

    const-string p1, "android.media.metadata.ALBUM_ART"

    .line 558
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 554
    invoke-virtual {v1, p1, p2}, Landroid/media/MediaMetadata$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/media/MediaMetadata$Builder;

    .line 553
    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion;->obtainMusicMeta(Landroid/media/MediaMetadata$Builder;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p1

    return-object p1
.end method

.method public final changeAttribute(Landroid/media/MediaMetadata;Ljava/lang/String;J)Landroid/media/MediaMetadata;
    .locals 1

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 539
    new-instance v0, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v0, p1}, Landroid/media/MediaMetadata$Builder;-><init>(Landroid/media/MediaMetadata;)V

    .line 540
    invoke-virtual {v0, p2, p3, p4}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    .line 541
    invoke-virtual {v0}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object p1

    const-string p2, "build()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "MediaMetadata.Builder(m)\u2026    build()\n            }"

    .line 539
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final changeAttribute(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 1

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 531
    new-instance v0, Landroid/media/MediaMetadata$Builder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/media/MediaMetadata$Builder;-><init>(Landroid/media/MediaMetadata;)V

    .line 532
    invoke-virtual {v0, p2, p3, p4}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    .line 533
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion;

    invoke-direct {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion;->obtainMusicMeta(Landroid/media/MediaMetadata$Builder;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p1

    return-object p1
.end method

.method public final changeAttribute(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 1

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 517
    new-instance v0, Landroid/media/MediaMetadata$Builder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/media/MediaMetadata$Builder;-><init>(Landroid/media/MediaMetadata;)V

    .line 518
    invoke-virtual {v0, p2, p3}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    .line 519
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion;

    invoke-direct {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion;->obtainMusicMeta(Landroid/media/MediaMetadata$Builder;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p1

    return-object p1
.end method

.method public final convertAudioId(Ljava/lang/String;)J
    .locals 3

    .line 504
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "SMUSIC-MusicMeta"

    .line 506
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertAudioId but audio id is abnormal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public final getEmpty()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 3

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->access$getEmpty$cp()Lkotlin/Lazy;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    return-object v0
.end method
