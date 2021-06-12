.class final Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$performGetLicense$1$invokeSuspend$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$performGetLicense$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$performGetLicense$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$performGetLicense$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$performGetLicense$1$invokeSuspend$$inlined$let$lambda$1;->a:Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$performGetLicense$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 199
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$performGetLicense$1$invokeSuspend$$inlined$let$lambda$1;->a:Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$performGetLicense$1;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$performGetLicense$1;->this$0:Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter;->getItemCount()I

    move-result p1

    if-nez p1, :cond_1

    .line 200
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$performGetLicense$1$invokeSuspend$$inlined$let$lambda$1;->a:Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$performGetLicense$1;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$performGetLicense$1;->this$0:Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    :cond_1
    const-string p1, "MDrmTracksFragment"

    .line 204
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "performGetLicense "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$performGetLicense$1$invokeSuspend$$inlined$let$lambda$1;->a:Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$performGetLicense$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$performGetLicense$1;->this$0:Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter;->getItemCount()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  item is expired yet "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 202
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
