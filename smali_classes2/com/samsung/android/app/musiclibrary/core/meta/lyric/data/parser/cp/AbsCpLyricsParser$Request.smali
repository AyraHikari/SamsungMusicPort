.class public Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$Request;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$Request$OnRequestPreparedListener;
    }
.end annotation


# instance fields
.field public lyricsUrl:Ljava/lang/String;

.field public final sourceId:Ljava/lang/String;

.field public final userData:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$Request;->sourceId:Ljava/lang/String;

    .line 142
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$Request;->userData:Ljava/lang/Object;

    return-void
.end method

.method static obtain(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$Request;
    .locals 1

    .line 137
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$Request;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$Request;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
