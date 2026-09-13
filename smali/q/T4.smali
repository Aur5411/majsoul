.class public final Lq/T4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lq/U4;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lq/U4;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lq/T4;->a:Lq/U4;

    return-void
.end method


# virtual methods
.method public final a()Lq/U4;
    .registers 4

    new-instance v0, Lq/U4;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Lq/T4;->a:Lq/U4;

    iget-object v1, v1, Lq/U4;->a:Ljava/util/List;

    if-nez v1, :cond_12

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lq/U4;->a:Ljava/util/List;

    goto :goto_21

    :cond_12
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lq/T4;->a:Lq/U4;

    iget-object v2, v2, Lq/U4;->a:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lq/U4;->a:Ljava/util/List;

    :goto_21
    iget-object v1, p0, Lq/T4;->a:Lq/U4;

    iget-object v1, v1, Lq/U4;->b:Ljava/util/List;

    if-nez v1, :cond_2e

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lq/U4;->b:Ljava/util/List;

    goto :goto_3d

    :cond_2e
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lq/T4;->a:Lq/U4;

    iget-object v2, v2, Lq/U4;->b:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lq/U4;->b:Ljava/util/List;

    :goto_3d
    iget-object v1, p0, Lq/T4;->a:Lq/U4;

    iget-object v1, v1, Lq/U4;->c:Ljava/util/List;

    if-nez v1, :cond_4a

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lq/U4;->c:Ljava/util/List;

    goto :goto_59

    :cond_4a
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lq/T4;->a:Lq/U4;

    iget-object v2, v2, Lq/U4;->c:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lq/U4;->c:Ljava/util/List;

    :goto_59
    iget-object v1, p0, Lq/T4;->a:Lq/U4;

    iget-object v1, v1, Lq/U4;->d:Ljava/util/List;

    if-nez v1, :cond_66

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lq/U4;->d:Ljava/util/List;

    goto :goto_75

    :cond_66
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lq/T4;->a:Lq/U4;

    iget-object v2, v2, Lq/U4;->d:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lq/U4;->d:Ljava/util/List;

    :goto_75
    iget-object v1, p0, Lq/T4;->a:Lq/U4;

    iget-object v1, v1, Lq/U4;->e:Ljava/util/List;

    if-nez v1, :cond_82

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lq/U4;->e:Ljava/util/List;

    goto :goto_91

    :cond_82
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lq/T4;->a:Lq/U4;

    iget-object v2, v2, Lq/U4;->e:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lq/U4;->e:Ljava/util/List;

    :goto_91
    return-object v0
.end method

.method public final b()Lq/T4;
    .registers 5

    new-instance v0, Lq/U4;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Lq/T4;->a:Lq/U4;

    iget-object v1, v1, Lq/U4;->a:Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_f

    iput-object v2, v0, Lq/U4;->a:Ljava/util/List;

    goto :goto_1a

    :cond_f
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lq/T4;->a:Lq/U4;

    iget-object v3, v3, Lq/U4;->a:Ljava/util/List;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lq/U4;->a:Ljava/util/List;

    :goto_1a
    iget-object v1, p0, Lq/T4;->a:Lq/U4;

    iget-object v1, v1, Lq/U4;->b:Ljava/util/List;

    if-nez v1, :cond_23

    iput-object v2, v0, Lq/U4;->b:Ljava/util/List;

    goto :goto_2e

    :cond_23
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lq/T4;->a:Lq/U4;

    iget-object v3, v3, Lq/U4;->b:Ljava/util/List;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lq/U4;->b:Ljava/util/List;

    :goto_2e
    iget-object v1, p0, Lq/T4;->a:Lq/U4;

    iget-object v1, v1, Lq/U4;->c:Ljava/util/List;

    if-nez v1, :cond_37

    iput-object v2, v0, Lq/U4;->c:Ljava/util/List;

    goto :goto_42

    :cond_37
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lq/T4;->a:Lq/U4;

    iget-object v3, v3, Lq/U4;->c:Ljava/util/List;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lq/U4;->c:Ljava/util/List;

    :goto_42
    iget-object v1, p0, Lq/T4;->a:Lq/U4;

    iget-object v1, v1, Lq/U4;->d:Ljava/util/List;

    if-nez v1, :cond_4b

    iput-object v2, v0, Lq/U4;->d:Ljava/util/List;

    goto :goto_56

    :cond_4b
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lq/T4;->a:Lq/U4;

    iget-object v3, v3, Lq/U4;->d:Ljava/util/List;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lq/U4;->d:Ljava/util/List;

    :goto_56
    iget-object v1, p0, Lq/T4;->a:Lq/U4;

    iget-object v1, v1, Lq/U4;->e:Ljava/util/List;

    if-nez v1, :cond_5f

    iput-object v2, v0, Lq/U4;->e:Ljava/util/List;

    goto :goto_6a

    :cond_5f
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lq/T4;->a:Lq/U4;

    iget-object v2, v2, Lq/U4;->e:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lq/U4;->e:Ljava/util/List;

    :goto_6a
    new-instance v1, Lq/T4;

    invoke-direct {v1}, Lq/T4;-><init>()V

    iput-object v0, v1, Lq/T4;->a:Lq/U4;

    return-object v1
.end method

.method public final c(Lq/U4;)V
    .registers 4

    iget-object v0, p1, Lq/U4;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lq/T4;->a:Lq/U4;

    iget-object v1, v0, Lq/U4;->a:Ljava/util/List;

    if-nez v1, :cond_15

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lq/U4;->a:Ljava/util/List;

    :cond_15
    iget-object v0, p0, Lq/T4;->a:Lq/U4;

    iget-object v0, v0, Lq/U4;->a:Ljava/util/List;

    iget-object v1, p1, Lq/U4;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1e
    iget-object v0, p1, Lq/U4;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3c

    iget-object v0, p0, Lq/T4;->a:Lq/U4;

    iget-object v1, v0, Lq/U4;->b:Ljava/util/List;

    if-nez v1, :cond_33

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lq/U4;->b:Ljava/util/List;

    :cond_33
    iget-object v0, p0, Lq/T4;->a:Lq/U4;

    iget-object v0, v0, Lq/U4;->b:Ljava/util/List;

    iget-object v1, p1, Lq/U4;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3c
    iget-object v0, p1, Lq/U4;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5a

    iget-object v0, p0, Lq/T4;->a:Lq/U4;

    iget-object v1, v0, Lq/U4;->c:Ljava/util/List;

    if-nez v1, :cond_51

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lq/U4;->c:Ljava/util/List;

    :cond_51
    iget-object v0, p0, Lq/T4;->a:Lq/U4;

    iget-object v0, v0, Lq/U4;->c:Ljava/util/List;

    iget-object v1, p1, Lq/U4;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5a
    iget-object v0, p1, Lq/U4;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_78

    iget-object v0, p0, Lq/T4;->a:Lq/U4;

    iget-object v1, v0, Lq/U4;->d:Ljava/util/List;

    if-nez v1, :cond_6f

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lq/U4;->d:Ljava/util/List;

    :cond_6f
    iget-object v0, p0, Lq/T4;->a:Lq/U4;

    iget-object v0, v0, Lq/U4;->d:Ljava/util/List;

    iget-object v1, p1, Lq/U4;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_78
    iget-object v0, p1, Lq/U4;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_96

    iget-object v0, p0, Lq/T4;->a:Lq/U4;

    iget-object v1, v0, Lq/U4;->e:Ljava/util/List;

    if-nez v1, :cond_8d

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lq/U4;->e:Ljava/util/List;

    :cond_8d
    iget-object v0, p0, Lq/T4;->a:Lq/U4;

    iget-object v0, v0, Lq/U4;->e:Ljava/util/List;

    iget-object p1, p1, Lq/U4;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_96
    return-void
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lq/T4;->b()Lq/T4;

    move-result-object v0

    return-object v0
.end method
