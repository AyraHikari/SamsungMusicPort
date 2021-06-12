.class final Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter$SpotifyViewHolder$$special$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter$SpotifyViewHolder;-><init>(Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter$SpotifyViewHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter$SpotifyViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter$SpotifyViewHolder$$special$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter$SpotifyViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1497
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter$SpotifyViewHolder$$special$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter$SpotifyViewHolder;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter$SpotifyViewHolder;->a(Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter$SpotifyViewHolder;)Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter$SpotifyViewHolder$$special$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter$SpotifyViewHolder;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter$SpotifyViewHolder;->getItemId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter$SpotifyViewHolder$$special$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter$SpotifyViewHolder;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter$SpotifyViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;->a(Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;JI)V

    return-void
.end method
