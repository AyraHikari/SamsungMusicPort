.class final Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder$onClickListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;-><init>(Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $adapter:Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;

.field final synthetic this$0:Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder$onClickListener$1;->this$0:Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder$onClickListener$1;->$adapter:Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const-string v0, "it"

    .line 312
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 314
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder$onClickListener$1;->$adapter:Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder$onClickListener$1;->this$0:Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder$onClickListener$1;->this$0:Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;->getItemId()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;->onItemClick(IJI)V

    goto :goto_0

    .line 313
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder$onClickListener$1;->$adapter:Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder$onClickListener$1;->this$0:Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder$onClickListener$1;->this$0:Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;->getItemId()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;->onItemClick(IJI)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f1301e2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
