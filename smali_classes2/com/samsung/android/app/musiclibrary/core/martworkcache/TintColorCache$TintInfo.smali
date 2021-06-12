.class public Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TintInfo"
.end annotation


# instance fields
.field public final gradientColorA:I

.field public final gradientColorB:I

.field public final primaryColor:I


# direct methods
.method private constructor <init>(Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-virtual {p1}, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;->a()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;->gradientColorA:I

    .line 83
    invoke-virtual {p1}, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;->b()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;->gradientColorB:I

    .line 84
    invoke-virtual {p1}, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;->b()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;->primaryColor:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$1;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;-><init>(Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TintInfo{gradientColorA=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;->gradientColorA:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", gradientColorB=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;->gradientColorB:I

    .line 90
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", primaryColor=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;->primaryColor:I

    .line 91
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
