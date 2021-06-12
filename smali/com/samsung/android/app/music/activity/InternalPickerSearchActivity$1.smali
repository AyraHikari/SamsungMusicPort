.class Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity$1;->a:Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity$1;->a:Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity;->b(Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_checked_ids"

    iget-object v2, p0, Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity$1;->a:Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity;

    .line 48
    invoke-static {v2}, Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity;->a(Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity;)Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->a()[J

    move-result-object v2

    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity$1;->a:Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity;

    iget-object v1, p0, Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity$1;->a:Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity;

    invoke-static {v1}, Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity;->b(Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method
