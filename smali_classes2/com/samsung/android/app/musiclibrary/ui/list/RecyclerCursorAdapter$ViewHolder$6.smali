.class final Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnGenericMotionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View$OnGenericMotionListener;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/view/View$OnGenericMotionListener;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder$6;->a:Landroid/view/View$OnGenericMotionListener;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder$6;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1010
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder$6;->a:Landroid/view/View$OnGenericMotionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder$6;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1012
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder$6;->a:Landroid/view/View$OnGenericMotionListener;

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnGenericMotionListener;->onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
