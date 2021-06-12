.class final Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter<",
        "Lcom/samsung/android/app/music/model/SimpleTrack;",
        "Landroid/content/ContentValues;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/SimpleTrack;)Landroid/content/ContentValues;
    .locals 0

    .line 229
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/SimpleTrack;->toContentValues()Landroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method

.method public synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 226
    check-cast p1, Lcom/samsung/android/app/music/model/SimpleTrack;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$3;->a(Lcom/samsung/android/app/music/model/SimpleTrack;)Landroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method
