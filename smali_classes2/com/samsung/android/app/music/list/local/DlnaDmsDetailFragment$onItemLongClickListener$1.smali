.class final Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$onItemLongClickListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$onItemLongClickListener$1;->a:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;IJ)Z
    .locals 2

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_0

    return p1

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$onItemLongClickListener$1;->a:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$onItemLongClickListener$1;->a:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter;

    invoke-virtual {v1, p2}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter;->getText1(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p3, p4}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->a(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;Ljava/lang/String;J)V

    return p1
.end method
