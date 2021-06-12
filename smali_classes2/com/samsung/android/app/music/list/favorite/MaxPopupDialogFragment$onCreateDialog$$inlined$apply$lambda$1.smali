.class final Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment$onCreateDialog$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $favoriteType:Ljava/lang/String;

.field final synthetic $finishActivity:Z

.field final synthetic $savedInstanceState$inlined:Landroid/os/Bundle;

.field final synthetic $screenId:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment$onCreateDialog$$inlined$apply$lambda$1;->$favoriteType:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment$onCreateDialog$$inlined$apply$lambda$1;->$screenId:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment$onCreateDialog$$inlined$apply$lambda$1;->$finishActivity:Z

    iput-object p4, p0, Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment$onCreateDialog$$inlined$apply$lambda$1;->this$0:Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment;

    iput-object p5, p0, Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment$onCreateDialog$$inlined$apply$lambda$1;->$savedInstanceState$inlined:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 1683
    iget-object p1, p0, Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment$onCreateDialog$$inlined$apply$lambda$1;->$favoriteType:Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const-string p2, "5"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "8024"

    goto :goto_1

    :pswitch_2
    const-string p2, "3"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "8022"

    goto :goto_1

    :pswitch_3
    const-string p2, "2"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "8023"

    goto :goto_1

    :pswitch_4
    const-string p2, "1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "8021"

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    move-object v2, p1

    if-eqz v2, :cond_2

    .line 1690
    sget-object v0, Lcom/samsung/android/app/musiclibrary/kotlin/extension/SamsungAnalytics;->a:Lcom/samsung/android/app/musiclibrary/kotlin/extension/SamsungAnalytics;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment$onCreateDialog$$inlined$apply$lambda$1;->$screenId:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/SamsungAnalytics;->a(Lcom/samsung/android/app/musiclibrary/kotlin/extension/SamsungAnalytics;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 1692
    :cond_2
    iget-boolean p1, p0, Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment$onCreateDialog$$inlined$apply$lambda$1;->$finishActivity:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment$onCreateDialog$$inlined$apply$lambda$1;->this$0:Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
