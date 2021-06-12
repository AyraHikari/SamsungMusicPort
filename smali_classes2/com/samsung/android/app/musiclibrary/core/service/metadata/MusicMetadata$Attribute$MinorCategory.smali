.class public final Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$MinorCategory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MinorCategory"
.end annotation


# static fields
.field public static final ADVERTISEMENT:J = 0x10L

.field public static final CELEB:J = 0x20L

.field public static final INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$MinorCategory;

.field private static final MASK:J = 0xf0L

.field public static final SONG:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 157
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$MinorCategory;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$MinorCategory;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$MinorCategory;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$MinorCategory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isCeleb(J)Z
    .locals 2

    const-wide/16 v0, 0x20

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final isAdvertisement$musicLibrary_release(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z
    .locals 4

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.samsung.android.app.music.metadata.ATTRIBUTE"

    .line 164
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0xf0

    and-long/2addr v0, v2

    const-wide/16 v2, 0x10

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isCeleb$musicLibrary_release(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z
    .locals 4

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.samsung.android.app.music.metadata.ATTRIBUTE"

    .line 168
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0xf0

    and-long/2addr v0, v2

    const-wide/16 v2, 0x20

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isSong$musicLibrary_release(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z
    .locals 4

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.samsung.android.app.music.metadata.ATTRIBUTE"

    .line 172
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0xf0

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
