.class final Lcom/samsung/android/app/music/activity/BaseServiceActivity$dialogReceiver$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/activity/BaseServiceActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/samsung/android/app/music/milk/MilkDialogReceiver;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/activity/BaseServiceActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/activity/BaseServiceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity$dialogReceiver$2;->this$0:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/music/milk/MilkDialogReceiver;
    .locals 2

    .line 146
    new-instance v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;

    iget-object v1, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity$dialogReceiver$2;->this$0:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    check-cast v1, Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity$dialogReceiver$2;->invoke()Lcom/samsung/android/app/music/milk/MilkDialogReceiver;

    move-result-object v0

    return-object v0
.end method
