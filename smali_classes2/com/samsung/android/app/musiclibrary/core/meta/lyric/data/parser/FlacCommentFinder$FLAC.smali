.class final Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder$FLAC;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FLAC"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder$FLAC$META_BLOCK;
    }
.end annotation


# static fields
.field static final MAGIC_NUMBER:Ljava/lang/String; = "664C6143"

.field static final MAGIC_NUMBER_SIZE:I = 0x4


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
