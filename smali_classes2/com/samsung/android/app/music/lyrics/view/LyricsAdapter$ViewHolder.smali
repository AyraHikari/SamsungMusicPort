.class public Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$ViewHolder;
.super Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public final artistText:Landroid/widget/TextView;

.field public final titleText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 86
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f1302b9

    .line 87
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$ViewHolder;->lyricText:Landroid/widget/TextView;

    const v0, 0x7f1302b7

    .line 88
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$ViewHolder;->titleText:Landroid/widget/TextView;

    const v0, 0x7f1302b8

    .line 89
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$ViewHolder;->artistText:Landroid/widget/TextView;

    return-void
.end method
