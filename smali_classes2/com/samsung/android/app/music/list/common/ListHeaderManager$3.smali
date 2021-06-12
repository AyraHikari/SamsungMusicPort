.class final Lcom/samsung/android/app/music/list/common/ListHeaderManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/common/ListHeaderManager;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;IILcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/common/ListHeaderManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/common/ListHeaderManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$3;->a:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final setViewEnabled(Z)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$3;->a:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->a(Lcom/samsung/android/app/music/list/common/ListHeaderManager;Z)V

    return-void
.end method
