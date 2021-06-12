.class final Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$safeNotifyItemChanged$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->safeNotifyItemChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $position:I

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$safeNotifyItemChanged$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$safeNotifyItemChanged$1;->$position:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$safeNotifyItemChanged$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 692
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$safeNotifyItemChanged$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$safeNotifyItemChanged$1;->$position:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->notifyItemChanged(I)V

    return-void
.end method
