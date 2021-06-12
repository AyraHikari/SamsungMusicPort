.class Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;->a(Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;

.field final synthetic b:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;)V
    .locals 0

    .line 428
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$2;->b:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$2;->a:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 431
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 432
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$2;->b:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;->a(Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;)Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$2;->a:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
