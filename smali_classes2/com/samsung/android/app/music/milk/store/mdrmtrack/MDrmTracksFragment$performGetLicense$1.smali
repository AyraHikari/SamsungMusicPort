.class final Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$performGetLicense$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    b = "MdrmTracksFragment.kt"
    c = {}
    d = "invokeSuspend"
    e = "com.samsung.android.app.music.milk.store.mdrmtrack.MDrmTracksFragment$performGetLicense$1"
.end annotation


# instance fields
.field label:I

.field private p$:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$performGetLicense$1;->this$0:Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$performGetLicense$1;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$performGetLicense$1;->this$0:Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;

    invoke-direct {v0, v1, p2}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$performGetLicense$1;-><init>(Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$performGetLicense$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$performGetLicense$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$performGetLicense$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$performGetLicense$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    .line 188
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$performGetLicense$1;->label:I

    if-nez v0, :cond_4

    instance-of v0, p1, Lkotlin/Result$Failure;

    if-nez v0, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$performGetLicense$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    .line 189
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$performGetLicense$1;->this$0:Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->a(Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;)I

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    const-string v0, "MDrmTracksFragment"

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performGetLicense result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$performGetLicense$1;->this$0:Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->b(Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;)V

    if-nez p1, :cond_2

    .line 195
    new-instance p1, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$performGetLicense$1;->this$0:Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b01e9

    .line 196
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(I)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0b047f

    .line 197
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->b(I)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0b02d3

    .line 198
    new-instance v1, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$performGetLicense$1$invokeSuspend$$inlined$let$lambda$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$performGetLicense$1$invokeSuspend$$inlined$let$lambda$1;-><init>(Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$performGetLicense$1;)V

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object p1

    .line 207
    invoke-virtual {p1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a()Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$performGetLicense$1;->this$0:Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "getlicense_complete"

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 211
    :cond_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    .line 188
    :cond_3
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p1, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p1

    .line 211
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
