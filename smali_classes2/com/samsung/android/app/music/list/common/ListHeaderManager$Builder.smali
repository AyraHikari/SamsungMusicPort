.class public final Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/common/ListHeaderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private a:I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end field

.field private b:Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;

.field private c:Ljava/lang/Integer;

.field private d:Ljava/lang/Integer;

.field private e:Ljava/lang/Integer;

.field private f:Z

.field private g:Z

.field private h:Z

.field private final i:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->i:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    const p1, 0x7f04017b

    .line 214
    iput p1, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->a:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 214
    iget v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->a:I

    return v0
.end method

.method public final a(I)Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;
    .locals 1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 232
    :pswitch_0
    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->h:Z

    goto :goto_0

    .line 231
    :pswitch_1
    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->g:Z

    goto :goto_0

    .line 230
    :pswitch_2
    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->f:Z

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;)Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;
    .locals 1

    const-string v0, "filterable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->b:Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;

    return-object p0
.end method

.method public final a(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 248
    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->d:Ljava/lang/Integer;

    .line 249
    iput-object p2, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->e:Ljava/lang/Integer;

    return-void
.end method

.method public final b()Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->b:Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;

    return-object v0
.end method

.method public final b(I)Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .line 238
    iput p1, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->a:I

    return-object p0
.end method

.method public final c(I)Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;
    .locals 0

    .line 243
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->c:Ljava/lang/Integer;

    return-object p0
.end method

.method public final c()Ljava/lang/Integer;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method public final d()Ljava/lang/Integer;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->d:Ljava/lang/Integer;

    return-object v0
.end method

.method public final e()Ljava/lang/Integer;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->e:Ljava/lang/Integer;

    return-object v0
.end method

.method public final f()Z
    .locals 1

    .line 219
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->f:Z

    return v0
.end method

.method public final g()Z
    .locals 1

    .line 220
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->g:Z

    return v0
.end method

.method public final h()Z
    .locals 1

    .line 221
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->h:Z

    return v0
.end method

.method public final i()Lcom/samsung/android/app/music/list/common/ListHeaderManager;
    .locals 1

    .line 253
    new-instance v0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;-><init>(Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;)V

    return-object v0
.end method

.method public final j()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "*>;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->i:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    return-object v0
.end method
