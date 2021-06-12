.class public final Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder$VORBIS_COMMENT;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VORBIS_COMMENT"
.end annotation


# static fields
.field static final COMMENT_ENCODING:Ljava/lang/String; = "UTF-8"

.field static final COMMENT_LENGTH_SIZE:I = 0x4

.field static final TYPE_LYRICS:Ljava/lang/String; = "LYRICS="

.field static final VENDER_LENGTH_SIZE:I = 0x4

.field static final VENDER_STRING_ENCODING:Ljava/lang/String; = "UTF-8"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
