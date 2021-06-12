.class final Lcom/samsung/android/app/music/activity/PermissionLegalActivity$mShowButtonListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver$OnSettingValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/activity/PermissionLegalActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/activity/PermissionLegalActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/activity/PermissionLegalActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$mShowButtonListener$1;->a:Lcom/samsung/android/app/music/activity/PermissionLegalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 50
    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 52
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$mShowButtonListener$1;->a:Lcom/samsung/android/app/music/activity/PermissionLegalActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->h(Lcom/samsung/android/app/music/activity/PermissionLegalActivity;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    .line 53
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$mShowButtonListener$1;->a:Lcom/samsung/android/app/music/activity/PermissionLegalActivity;

    const v0, 0x7f1302d9

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$mShowButtonListener$1;->a:Lcom/samsung/android/app/music/activity/PermissionLegalActivity;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    const-string v1, "stub.inflate()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->c(Lcom/samsung/android/app/music/activity/PermissionLegalActivity;Landroid/view/View;)V

    .line 56
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$mShowButtonListener$1;->a:Lcom/samsung/android/app/music/activity/PermissionLegalActivity;

    const v0, 0x7f020511

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 58
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$mShowButtonListener$1;->a:Lcom/samsung/android/app/music/activity/PermissionLegalActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->h(Lcom/samsung/android/app/music/activity/PermissionLegalActivity;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 59
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$mShowButtonListener$1;->a:Lcom/samsung/android/app/music/activity/PermissionLegalActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->g(Lcom/samsung/android/app/music/activity/PermissionLegalActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method
