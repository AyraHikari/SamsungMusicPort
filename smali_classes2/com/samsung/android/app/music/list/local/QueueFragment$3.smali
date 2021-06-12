.class Lcom/samsung/android/app/music/list/local/QueueFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/QueueFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

.field final synthetic b:Lcom/samsung/android/app/music/list/local/QueueFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/QueueFragment;Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$3;->b:Lcom/samsung/android/app/music/list/local/QueueFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$3;->a:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$3;->a:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->a(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
