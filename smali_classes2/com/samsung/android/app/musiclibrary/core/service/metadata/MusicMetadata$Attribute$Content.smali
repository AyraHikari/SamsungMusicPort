.class public final Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Content;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Content"
.end annotation


# static fields
.field public static final EXPLICIT:J = 0x200L

.field public static final INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Content;

.field public static final PRIVATE:J = 0x100L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 181
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Content;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Content;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Content;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Content;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isExplicit(J)Z
    .locals 2

    const-wide/16 v0, 0x200

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

.method public static final isPrivate(J)Z
    .locals 2

    const-wide/16 v0, 0x100

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
.method public final isExplicit$musicLibrary_release(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z
    .locals 2

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.samsung.android.app.music.metadata.ATTRIBUTE"

    .line 195
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Content;->isExplicit(J)Z

    move-result p1

    return p1
.end method

.method public final isPrivate$musicLibrary_release(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z
    .locals 2

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.samsung.android.app.music.metadata.ATTRIBUTE"

    .line 186
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Content;->isPrivate(J)Z

    move-result p1

    return p1
.end method
