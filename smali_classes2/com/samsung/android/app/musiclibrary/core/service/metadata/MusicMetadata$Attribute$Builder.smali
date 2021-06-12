.class public final Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder$Companion;

.field private static final UNDEFINED:J


# instance fields
.field private attribute:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()J
    .locals 4

    .line 241
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;->attribute:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$MajorCategory;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$MajorCategory;

    iget-wide v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;->attribute:J

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$MajorCategory;->hasMajorCategory(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 243
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;->putMusicAttribute()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;

    .line 245
    :cond_1
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;->attribute:J

    return-wide v0
.end method

.method public final putCelebAttribute()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;
    .locals 4

    .line 236
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;->attribute:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;->attribute:J

    return-object p0
.end method

.method public final putExplicitAttribute()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;
    .locals 4

    .line 219
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;->attribute:J

    const-wide/16 v2, 0x200

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;->attribute:J

    return-object p0
.end method

.method public final putMusicAttribute()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;
    .locals 4

    .line 209
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;->attribute:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;->attribute:J

    return-object p0
.end method

.method public final putPrivateAttribute()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;
    .locals 4

    .line 214
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;->attribute:J

    const-wide/16 v2, 0x100

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;->attribute:J

    return-object p0
.end method

.method public final putRadioAdvertisementAttribute()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;
    .locals 4

    .line 231
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;->attribute:J

    const-wide/16 v2, 0x12

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;->attribute:J

    return-object p0
.end method

.method public final putRadioAttribute()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;
    .locals 4

    .line 225
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;->attribute:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;->attribute:J

    return-object p0
.end method
