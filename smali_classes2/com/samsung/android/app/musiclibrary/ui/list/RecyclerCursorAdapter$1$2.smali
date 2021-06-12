.class final Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$1;->a(IIII)V
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
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$1$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$1$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$1$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$1;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->notifyDataSetChanged()V

    return-void
.end method
