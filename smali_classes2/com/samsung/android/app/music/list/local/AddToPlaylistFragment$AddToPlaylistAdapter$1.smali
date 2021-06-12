.class final Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$1;->this$0:Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 240
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$1;->invoke(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;)V
    .locals 3

    .line 307
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$1;->this$0:Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;->a(Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b03eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 309
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
