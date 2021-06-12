.class Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser$JsonLyrics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JsonLyrics"
.end annotation


# instance fields
.field lyrics:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser$JsonLyrics;->lyrics:Ljava/lang/String;

    return-object v0
.end method
