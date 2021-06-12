.class Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic b:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;

.field final synthetic c:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$1;->c:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$1;->a:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;

    iput-object p3, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$1;->b:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 414
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$1;->a:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;

    iget-object p1, p1, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;->a:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 415
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$1;->a:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;

    iget-object p1, p1, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;->a:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$1;->a:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 416
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$1;->b:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$1;->a:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p1, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;->d:Z

    :cond_0
    return-void
.end method
