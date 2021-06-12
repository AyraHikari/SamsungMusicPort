.class Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlayingItemDescriptionCacheKey"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 250
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;->c:I

    .line 253
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 258
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;->a:Ljava/lang/String;

    goto :goto_0

    .line 260
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;->a:Ljava/lang/String;

    :goto_0
    if-nez p2, :cond_1

    const-string p1, ""

    .line 263
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;->b:Ljava/lang/String;

    goto :goto_1

    .line 265
    :cond_1
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;->b:Ljava/lang/String;

    :goto_1
    const/4 p1, -0x1

    .line 267
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;->c:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 275
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 279
    :cond_1
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;

    .line 281
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 284
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 289
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 290
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;->c:I

    .line 291
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;->c:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;->c:I

    .line 293
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;->c:I

    return v0
.end method
