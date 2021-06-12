.class Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Frame"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Content;,
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;
    }
.end annotation


# static fields
.field static final FRAME_ID:Ljava/lang/String; = "XSYL"


# instance fields
.field contents:[Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Content;

.field final header:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame;->header:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;

    return-void
.end method
