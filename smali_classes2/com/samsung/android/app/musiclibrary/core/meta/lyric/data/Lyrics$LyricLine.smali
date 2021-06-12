.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LyricLine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine$LyricsText;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;",
        ">;",
        "Ljava/lang/Iterable<",
        "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine$LyricsText;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getTime()J
.end method

.method public abstract length()I
.end method

.method public abstract size()I
.end method

.method public abstract toString()Ljava/lang/String;
.end method
