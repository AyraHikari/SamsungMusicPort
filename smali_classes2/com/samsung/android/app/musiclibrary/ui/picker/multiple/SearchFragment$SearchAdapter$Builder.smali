.class public Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$SearchAdapter$Builder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$SearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder<",
        "Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$SearchAdapter$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 388
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;-><init>(Landroid/support/v4/app/Fragment;)V

    return-void
.end method


# virtual methods
.method protected a()Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$SearchAdapter$Builder;
    .locals 0

    return-object p0
.end method

.method public b()Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$SearchAdapter;
    .locals 1

    .line 398
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$SearchAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$SearchAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;)V

    return-object v0
.end method

.method public synthetic build()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 385
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$SearchAdapter$Builder;->b()Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$SearchAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1

    .line 385
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$SearchAdapter$Builder;->a()Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$SearchAdapter$Builder;

    move-result-object v0

    return-object v0
.end method
