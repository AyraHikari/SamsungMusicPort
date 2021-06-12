.class Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Header"
.end annotation


# instance fields
.field encoding:B

.field entryCount:I

.field flags:S

.field frameSize:I

.field language:Ljava/lang/String;

.field mimeType:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
