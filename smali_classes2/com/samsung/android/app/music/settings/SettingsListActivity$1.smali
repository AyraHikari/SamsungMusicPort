.class Lcom/samsung/android/app/music/settings/SettingsListActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/settings/SettingsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/settings/SettingsListActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/settings/SettingsListActivity;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity$1;->a:Lcom/samsung/android/app/music/settings/SettingsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity$1;->a:Lcom/samsung/android/app/music/settings/SettingsListActivity;

    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity$1;->a:Lcom/samsung/android/app/music/settings/SettingsListActivity;

    .line 191
    invoke-static {v1}, Lcom/samsung/android/app/music/settings/SettingsListActivity;->a(Lcom/samsung/android/app/music/settings/SettingsListActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v3, p3, v1

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/settings/SettingsListActivity;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
