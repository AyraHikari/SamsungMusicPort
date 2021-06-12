.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Attribute$MajorCategory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Attribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MajorCategory"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Attribute$MajorCategory;

.field private static final MASK:J = 0xfL

.field public static final MUSIC:J = 0x1L

.field public static final RADIO:J = 0x2L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 151
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Attribute$MajorCategory;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Attribute$MajorCategory;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Attribute$MajorCategory;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Attribute$MajorCategory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasMajorCategory(J)Z
    .locals 2

    const-wide/16 v0, 0xf

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isMusic(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)Z
    .locals 4

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.samsung.android.app.music.metadata.ATTRIBUTE"

    .line 157
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0xf

    and-long/2addr v0, v2

    const-wide/16 v2, 0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isRadio(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)Z
    .locals 4

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.samsung.android.app.music.metadata.ATTRIBUTE"

    .line 161
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0xf

    and-long/2addr v0, v2

    const-wide/16 v2, 0x2

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
